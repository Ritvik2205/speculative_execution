.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
xor si, 80
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
xor rax, 459999114
test rax, -2052112368
and dl, dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
xor cl, 24
xor al, cl
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
not al
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rbx], eax
jmp .bb_0.1
.bb_0.1:
test al, cl
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and dx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
