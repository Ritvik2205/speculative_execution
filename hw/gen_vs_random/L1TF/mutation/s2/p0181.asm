.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
btc ecx, eax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 47
mul rcx
bt edx, 38
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], di
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -25
lea bx, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
or dl, 1 # instrumentation
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
add al, 48 # instrumentation
cmovnz esi, esi
setnle al
or edx, ebx
setnz cl
mov rbx, -813004896564518775
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
