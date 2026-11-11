.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
xor bl, dl
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and cl, al
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edi
and rsi, 10
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], eax
jmp .bb_0.1
.bb_0.1:
btc ax, 7
btc cx, 115
and si, -121
jmp .bb_0.2
.bb_0.2:
xor ax, 31969
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
