.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -21 # instrumentation
adc rdi, 5 
test eax, -818909344 
mov dl, dl 
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx] 
cmovnbe cx, bx 
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi] 
neg al 
imul dx, bx 
xor rbx, rax 
btc rax, rdx 
sub ax, 24441 
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi] 
sbb rax, 183833426 
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111 
adc ax, ax 
add dl, dl 
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95 
cmp al, 81 
cmovnle cx, cx 
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516 
cmovo dx, si 
xor rsi, -3 
or ax, -15282 
and dl, bl 
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx] 
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al 
test rdi, -1876639003 
cmp dx, si 
or al, 95 
cmp ax, -15409 
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi 
add si, 4 
and dl, bl 
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx] 
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx] 
add ecx, eax 
test al, bl 
or dl, 56 
not dl 
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax] 
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2 
test bl, 0 
mov dil, -118 
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx] 
cmp rax, -120490246 
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx] 
sub dl, cl 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
