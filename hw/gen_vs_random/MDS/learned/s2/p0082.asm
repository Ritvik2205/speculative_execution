.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 55
test al, sil
and bl, 68
test cl, dil
or dil, -78
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
test rax, -359674714
xor rdx, -59
xor si, 80
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and bx, 65
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
test eax, 1729060510
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
