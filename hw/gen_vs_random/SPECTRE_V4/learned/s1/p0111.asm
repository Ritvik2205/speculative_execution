.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 16
test bl, -116
or al, -88
cmp edx, -95
cmp sil, 127
xchg rdi, rax
or esi, 32
test al, 52
sbb dil, 47
sub bl, al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
cmp al, 98
sbb al, -43
sub rax, 1914398062
dec bl
and al, -1
xor ax, -29507
test eax, -31785616
xchg ax, cx
and dl, bl
adc dl, sil
sbb dil, al
sbb cl, bl
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and al, -118
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
inc ecx
sub si, -92
add edi, 96
sub al, dl
adc al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
