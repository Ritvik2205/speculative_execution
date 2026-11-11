.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
or al, dl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
jmp .bb_0.1
.bb_0.1:
test al, 66
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
or bl, -52
test al, dl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
and dl, dl
or al, 54
xor rbx, 89
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
cmovnp rax, rdx
cmovnbe rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
