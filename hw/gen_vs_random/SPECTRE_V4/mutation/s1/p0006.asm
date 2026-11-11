.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -47
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
neg edi
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
add ax, 65
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
cmovbe rdx, rcx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
or rcx, rdx
test rax, -405021090
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], -1014276215
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -681182795
or bl, -99
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], edx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], -15
cmovno bx, dx
test rdi, -795635070
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], di
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], -21
dec sil
add bl, 91 # instrumentation
adc bl, cl
movsx edi, al
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -51
neg ecx
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
bt ecx, 135
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
xor ebx, -62
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edi
mov al, bl
add cl, -94 # instrumentation
cmovnle rsi, rcx
and cl, dl
mov al, 82
not eax
cmovo eax, edi
adc dx, bx
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
adc dil, -15
cmovnp ax, di
and bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
