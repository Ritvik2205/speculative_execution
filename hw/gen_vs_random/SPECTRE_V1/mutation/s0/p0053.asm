.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
test ax, -30637
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 39
sbb al, 104
sub cl, bl
mul rbx
adc dil, al
adc bl, al
setnb dil
cmp bl, al
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, cl
lea ecx, qword ptr [rbx + rcx + 13259]
add al, bl
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 4
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], eax
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
lea ebx, qword ptr [rax + rax + 18654]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
or rdx, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
