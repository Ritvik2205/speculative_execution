.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 69 # instrumentation
cmovnbe di, cx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
add bl, 102 # instrumentation
cmovnp edi, eax
or eax, -646827727
sub rax, 1914398062
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], ax
or al, -90
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
cmovs cx, bx
test dl, -81
or edx, -128
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -103
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi]
adc sil, 111
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -74
and rsi, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rsi]
add bl, cl
add cl, al
cmp edi, ecx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
add al, -127
sub bl, dil
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
cmovno rcx, rsi
dec sil
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
cmovno bx, dx
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], di
xor ebx, 40
mov al, bl
or bl, -86
cmovbe rdx, rcx
mov al, 119
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
add ax, -18924
movsx edi, al
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -125
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
