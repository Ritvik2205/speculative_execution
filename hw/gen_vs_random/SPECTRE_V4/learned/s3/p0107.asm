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
movzx ax, dl
xor eax, 181978569
and dil, 96
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
add bl, bl
add bl, bl
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
neg cx
adc di, -110
and dl, al
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
sub cl, -74
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
add dil, 16
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
or al, 96
cmovnbe di, bx
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
test rax, -344032571
cmp dil, cl
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
cmovp rdi, rbx
or si, dx
cmovnl rbx, rcx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
movzx rsi, ax
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rbx]
imul cl
or al, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
