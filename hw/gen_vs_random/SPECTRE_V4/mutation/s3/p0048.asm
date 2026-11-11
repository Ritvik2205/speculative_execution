.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -30 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
xor cl, 88
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
xor al, -120
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edx
and esi, ebx
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rbx
cmovb di, cx
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
cmovp rdx, rcx
imul ax
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx]
cmovle esi, eax
sbb eax, 1482884079
sub cl, -51
movzx edx, di
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
bts bx, 102
add dl, -91 # instrumentation
cmovl rbx, rcx
dec sil
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
cmovno bx, dx
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], di
xor ebx, -62
mov al, bl
or bl, 111
cmovbe rdx, rcx
mov al, 82
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rcx]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rsi], dx
test rax, -269735774
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edi
add ax, -7857
movsx edi, al
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -51
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], edx
add cl, -94 # instrumentation
cmovnle rsi, rcx
adc dil, -48
neg edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
