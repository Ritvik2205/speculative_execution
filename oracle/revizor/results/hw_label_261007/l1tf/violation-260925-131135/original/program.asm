.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi] 
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx] 
lea esi, qword ptr [rcx] 
adc eax, -1211718481 
cmovno dx, dx 
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 90 
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax] 
jmp .bb_0.1 
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx] 
lea ecx, qword ptr [rdi + rbx] 
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], esi 
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rbx] 
xor edx, 101 
bt dx, 223 
test eax, 1730342416 
xor cl, cl 
lea ebx, qword ptr [rsi] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
