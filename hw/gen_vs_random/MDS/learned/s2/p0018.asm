.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
test dil, dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
and ax, 29207
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
test dil, -51
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
jmp .bb_0.1
.bb_0.1:
xor bl, 67
jmp .bb_0.2
.bb_0.2:
or rdi, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
