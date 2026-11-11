.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
xor al, cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
xor dl, cl
and cl, -19
or cl, dl
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
test eax, 424329527
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
