.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle edi, ecx
cmovnle di, bx
test al, dl
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
lea esi, qword ptr [rax + rsi]
cmp cx, di
xchg edx, ecx
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 69
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
cmovle dx, dx
and rsi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
