.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, -13169
mul ax
test dx, si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
or si, 0b1000000000000000 # instrumentation
bsr di, si
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
add dil, 16
adc esi, 90
movzx ax, bl
or bl, al
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 36
test cl, bl
and cl, dl
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
adc al, cl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edi, edx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 70
xchg si, cx
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
cmovp edx, eax
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 19
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 7
add cx, 77
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 1
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
xor al, 102
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], ax
not di
or al, -71
cmovb rbx, rax
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
cmovnbe ax, dx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
movzx rdx, ax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
