.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
or sil, dil
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
xor dil, -70
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdi], eax
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
test bl, -14
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and bl, dl
xor rcx, -2
and sil, 74
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
xor bl, -102
btc eax, 40
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
