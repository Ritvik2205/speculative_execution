.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -21 # instrumentation
adc rdi, 5
test eax, -818909344
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovnbe cx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
neg al
imul dx, bx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], cx
xor bx, dx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rcx]
btc cx, 240
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
cmovs ax, di
cmovnle cx, cx
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
btr bx, di
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
