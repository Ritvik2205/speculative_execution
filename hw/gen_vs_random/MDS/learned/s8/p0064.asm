.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
or al, dl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
xor dil, -5
not cl
and rsi, 82
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
or al, 37
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
