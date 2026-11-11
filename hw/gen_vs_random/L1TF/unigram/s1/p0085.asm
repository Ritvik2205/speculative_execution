.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rsi + rsi + 53131]
cmp cx, 75
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
lea esi, qword ptr [rbx + rsi]
and rax, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rax]
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
add cl, -73 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rsi]
xchg rdi, rdx
mov ecx, ebx
or rsi, rsi
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
cmp di, -78
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
