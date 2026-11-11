.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, 28666
mul ax
test dx, si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
or si, 0b1000000000000000 # instrumentation
bsr di, si
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
add dil, 82
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
and qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
add bl, bl
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
neg cx
adc di, -110
and dl, al
xchg cx, ax
and rbx, 110
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
cmovnbe rax, rcx
add dil, 16
cmovnle eax, edi
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
cmovle cx, bx
cmovz rcx, rdx
adc bl, dl
and sil, al
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
xor eax, -437098167
neg sil
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
add dx, -90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
