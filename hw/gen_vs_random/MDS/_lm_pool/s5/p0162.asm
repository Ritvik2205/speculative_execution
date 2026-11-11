.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
or al, dl
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
or al, sil
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or sil, -78
and dil, -39
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
or al, -17
and al, cl
and al, 82
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
or al, cl
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
