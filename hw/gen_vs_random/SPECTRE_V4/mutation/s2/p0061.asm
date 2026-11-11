.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
cmovo eax, edi
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -47
test rax, -1395313845
mov al, 125
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], -21
neg edi
and rcx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edi
neg ecx
adc dx, bx
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -51
cmovbe rdx, rcx
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rsi], dx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], -1772009889
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
add cl, -94 # instrumentation
cmovnle rsi, rcx
or bl, 61
and cl, dl
and bl, dl
cmovnp ax, di
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -681182795
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
adc dil, -48
test rdi, 1222000858
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
mov al, bl
not eax
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
movsx edi, al
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
bt ecx, 135
add bl, 91 # instrumentation
adc bl, cl
add ax, 6414
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], di
xor ebx, 40
or rcx, rdx
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
cmovno bx, dx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], -15
dec sil
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
