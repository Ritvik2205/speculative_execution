.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb eax, edx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
mov si, 32553
lea rbx, qword ptr [rdx + rcx + 63]
and rdi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdi]
and dl, 10
or dl, sil
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
add al, 39 # instrumentation
cmovnb cx, si
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
cmp rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
