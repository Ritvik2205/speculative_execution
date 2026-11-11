.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
add al, -104 # instrumentation
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
xor al, al
bt ebx, edx
bt ax, 27
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rcx]
mov bl, dl
or dx, 0b1000000000000000 # instrumentation
bsf bx, dx
xor bl, bl
or al, -87
movsx ax, al
or ax, 10
lea rbx, qword ptr [rsi + rbx + 27]
imul edx, edi
lea edx, qword ptr [rcx]
cmovnb rsi, rdx
sub cl, cl
test bx, bx
and rcx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rcx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
or dl, dil
and dl, cl
sbb dl, dl
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
test rax, 1469613902
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
imul sil
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and bx, 37
movzx ecx, bl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 99
jmp .bb_0.1
.bb_0.1:
or al, -87
and rdi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdi]
cmovb di, di
cmovp edi, ecx
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
xor al, -127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
