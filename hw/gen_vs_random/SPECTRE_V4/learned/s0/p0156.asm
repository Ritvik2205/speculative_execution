.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
xor al, 48
or bl, bl
or al, 1
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
add bl, cl
sub al, 0
cmp dl, al
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
cmp bx, 113
or bl, bl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and dl, -104
cmp al, 75
test dl, -81
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and cl, al
add dil, -61
and cl, -118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
