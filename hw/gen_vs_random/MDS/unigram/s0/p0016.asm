.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 8 # instrumentation
cmovnl rsi, rdx
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
or bl, cl
test dx, di
and rax, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], edi
xor cl, 15
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
cmovb rcx, rax
or al, dil
cmovns cx, ax
btr rsi, 146
jmp .bb_0.1
.bb_0.1:
and dl, -52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
not cl
and sil, cl
xor rdi, -9
and dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
