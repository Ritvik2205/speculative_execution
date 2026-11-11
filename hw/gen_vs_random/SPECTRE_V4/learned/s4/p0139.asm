.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, cl
sub bx, si
or bx, -33
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
adc dil, bl
jmp .bb_0.1
.bb_0.1:
xor al, -113
cmp esi, 123
add al, al
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
add dil, 75
and dil, dl
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], di
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
add al, dl
jmp .bb_0.3
.bb_0.3:
sub al, bl
sub dl, al
add al, -29
adc edx, -86
or al, -50
add dl, dl
add al, -32
sub cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
