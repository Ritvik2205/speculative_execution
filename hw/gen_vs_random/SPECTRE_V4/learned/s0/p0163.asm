.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -23
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and al, -1
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
adc cl, -85
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
sbb bl, dl
add cl, -62
adc cl, dl
xor rcx, -111
and dl, -53
and al, 41
sub al, cl
xor rdx, 106
cmp bl, cl
test al, 115
add dil, bl
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
xor dl, al
and dil, -120
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], di
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and ax, 26513
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
