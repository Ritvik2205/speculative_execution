.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
btc ebx, 149
and dil, -24 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and dl, dl
and dl, dl
bt rdi, rsi
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
or sil, -49
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
test sil, 17
or al, al
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovno ebx, edi
and rcx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rcx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
and dil, -87 # instrumentation
cmovo di, dx
test bl, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
