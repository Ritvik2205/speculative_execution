.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and bx, 82
or dl, dl
sbb cl, al
and cl, bl
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], al
cmp al, -116
test eax, 1947430392
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
test al, -24
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
and dil, cl
sub al, sil
or ax, 27604
mov bl, dl
bt di, cx
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
cmp dl, 83
sub edi, 55
adc cl, -86
cmp dl, al
cmp dl, -82
adc dil, sil
inc eax
or sil, sil
test al, 72
xor rax, -98
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
add dil, 75
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
add rax, -874478885
and sil, -84
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
or al, dl
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
