.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -21 # instrumentation
lfence
adc rdi, 5 
lfence
test eax, -818909344 
lfence
mov dl, dl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
and dl, byte ptr [r14 + rdx] 
lfence
cmovnbe cx, bx 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovnle dx, word ptr [r14 + rdi] 
lfence
neg al 
lfence
imul dx, bx 
lfence
xor rbx, rax 
lfence
btc rax, rdx 
lfence
sub ax, 24441 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock inc qword ptr [r14 + rsi] 
lfence
sbb rax, 183833426 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
sbb dword ptr [r14 + rdi], 111 
lfence
adc ax, ax 
lfence
add dl, dl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
add dword ptr [r14 + rcx], -95 
lfence
cmp al, 81 
lfence
cmovnle cx, cx 
lfence
or dl, 0b1000 # instrumentation
lfence
and dl, 0b11111000 # instrumentation
lfence
add cl, -10 # instrumentation
lfence
mov cx, -26516 
lfence
cmovo dx, si 
lfence
xor rsi, -3 
lfence
or ax, -15282 
lfence
and dl, bl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
xor al, byte ptr [r14 + rcx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
mov byte ptr [r14 + rdx], al 
lfence
test rdi, -1876639003 
lfence
cmp dx, si 
lfence
or al, 95 
lfence
cmp ax, -15409 
lfence
or rsi, 0b1000000000000000000000000000000 # instrumentation
lfence
bsf rbx, rsi 
lfence
add si, 4 
lfence
and dl, bl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnl edx, dword ptr [r14 + rbx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnb bx, word ptr [r14 + rdx] 
lfence
add ecx, eax 
lfence
test al, bl 
lfence
or dl, 56 
lfence
not dl 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
lfence
bsf rdx, qword ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
btr qword ptr [r14 + rax], 2 
lfence
test bl, 0 
lfence
mov dil, -118 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
mov eax, dword ptr [r14 + rbx] 
lfence
cmp rax, -120490246 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovbe edx, dword ptr [r14 + rcx] 
lfence
sub dl, cl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
