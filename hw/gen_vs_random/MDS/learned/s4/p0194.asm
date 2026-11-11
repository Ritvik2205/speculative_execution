.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -8
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, -2039117613
jmp .bb_0.3
.bb_0.3:
or al, al
cmovno si, bx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
test al, cl
bt si, bx
or sil, dil
or al, 25
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
xor dil, -3
or cl, -77
xor al, sil
or cl, bl
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
