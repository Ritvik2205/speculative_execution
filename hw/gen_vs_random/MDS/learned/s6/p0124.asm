.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
or bl, cl
xor bl, -88
xor bl, sil
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and dl, -73
or dil, bl
test ax, -11534
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
or dil, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
