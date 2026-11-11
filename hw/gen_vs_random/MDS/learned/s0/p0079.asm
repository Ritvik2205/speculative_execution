.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
not dil
and ax, -12519
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and ax, 5001
xor al, cl
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
or rdx, -109
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
