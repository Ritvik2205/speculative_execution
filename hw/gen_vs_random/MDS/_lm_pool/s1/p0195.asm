.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
not al
jmp .bb_0.1
.bb_0.1:
or al, cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
jmp .bb_0.2
.bb_0.2:
xor sil, cl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
or cl, dl
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
or al, -24
xor cl, -13
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
