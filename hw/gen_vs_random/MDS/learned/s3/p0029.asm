.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -75
xor al, bl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], eax
or ax, 30524
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
or rax, 302048971
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 38
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
or al, dl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
