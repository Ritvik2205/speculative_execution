.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rcx
cmovnle di, cx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rbx, rbx
sub dl, al
xor eax, -105
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add sil, 2
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], -16
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdi
lea edi, qword ptr [rdi + rdi + 44205]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rbx
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], eax
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], cx
movzx si, cl
jmp .bb_0.2
.bb_0.2:
add al, 110 # instrumentation
add bl, -22 # instrumentation
cmovnz ebx, ebx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
neg rcx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rbx
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
or cl, cl
setno bl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
mov rdx, 3609511260715352814
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -1185
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
