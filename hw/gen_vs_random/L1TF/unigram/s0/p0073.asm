.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
btr ebx, 63
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], ax
setnl cl
cmovb ebx, edi
add bl, 104 # instrumentation
mov ebx, 4
jmp .bb_0.1
.bb_0.1:
test ebx, ebx
sub cl, cl
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
sub sil, bl
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], 29
cmovnb si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
