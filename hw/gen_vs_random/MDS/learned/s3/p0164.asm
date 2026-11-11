.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
cmovnb cx, di
cmovb rdx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
or cl, al
test rsi, 879594088
or ax, 28091
cmovl rcx, rax
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], sil
jmp .bb_0.1
.bb_0.1:
neg ebx
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
cmovz si, si
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
add dl, dl
xor cl, sil
cmp al, 77
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
test rdx, -1624442902
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
