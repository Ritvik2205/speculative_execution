.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, 125 
imul rdi, rsi, -40 
add si, di 
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al 
add ax, si 
xor cl, bl 
and rbx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rbx] 
mov cl, al 
cmovnb rdi, rax 
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], dx 
cmovnl rdi, rax 
xor al, -70 
imul edx, ecx 
add dl, 34 # instrumentation
cmovs esi, ebx 
and eax, -1933784378 
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx 
test bl, 33 
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 15401 
cmp eax, -44 
or edx, edi 
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 64 
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rax 
and cl, al 
test ax, 28315 
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rsi 
imul cx, di, -45 
add rsi, rdi 
and rax, -23 
sub esi, -48 
mov rcx, 336887974353728407 
xchg ax, si 
test al, cl 
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx] 
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al 
add cx, dx 
xor bl, -122 
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl 
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 108 
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 125 
or dl, al 
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi] 
movzx dx, al 
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdx] 
add al, -45 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi] 
add al, -46 
and rsi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rsi] 
xor al, -51 
test eax, -1652976520 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
