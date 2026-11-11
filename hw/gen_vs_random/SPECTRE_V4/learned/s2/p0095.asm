.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rax
cmp bl, al
or bl, -99
inc sil
or dil, -16
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
or bl, dl
sub dl, al
test al, cl
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and al, dl
and sil, -84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
