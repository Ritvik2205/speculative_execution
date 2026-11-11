.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rdx]
setp sil
xor bl, sil
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
add cl, -41 # instrumentation
adc si, bx
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
add bl, -79 # instrumentation
cmovo ax, dx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 92
add cl, -20
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
or sil, -44
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
add cl, 30 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
