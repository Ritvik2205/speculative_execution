.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
xor cl, sil
cmovs esi, ebx
btr rdi, 129
cmovnbe rdx, rax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdi
jmp .bb_0.1
.bb_0.1:
test al, cl
btr bx, 100
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 41
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
cmovnl esi, ecx
cmovns si, bx
not ecx
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
and cl, 101 # instrumentation
cmovno edx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
test dil, dl
bt bx, 253
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
