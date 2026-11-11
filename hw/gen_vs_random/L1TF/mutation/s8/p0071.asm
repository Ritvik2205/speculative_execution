.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rbx, rcx
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
xor cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
sub al, bl
sbb al, bl
movzx rdi, dl
cmp dil, dil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
neg bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
lea ecx, qword ptr [rcx + rsi + 60489]
lea edi, qword ptr [rbx + rax + 42155]
mul rdi
and rbx, rax
jmp .bb_0.2
.bb_0.2:
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
lea di, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 12
sub dl, 41
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], dx
add cl, -33 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
imul dl
or al, -57
inc eax
lea rax, qword ptr [rdi + rax + 36248]
lea rax, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rbx]
sbb cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
