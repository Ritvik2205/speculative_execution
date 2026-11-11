.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
imul ecx, eax, 65
add dl, al
add cl, -127
add bl, -64 # instrumentation
cmovnle eax, edi
jno .bb_0.1
jmp .exit_0
.bb_0.1:
setb bl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ecx
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
or sil, 122
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and dl, -92
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
lea dx, qword ptr [rbx + rdx + 56387]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
