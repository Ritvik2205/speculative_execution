.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
xor cl, al
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
xor di, -83
test al, -7
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rbx
btc rbx, 35
cmovnle esi, ebx
or bl, cl
or rdi, 21
xor cl, al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and dil, dl
or cl, bl
and rdi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdi]
and esi, edi
or ebx, -15
bts ax, 22
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
