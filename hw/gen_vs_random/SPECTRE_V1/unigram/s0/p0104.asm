.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
cmovle ax, cx
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rbx
setno sil
add ax, cx
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
xor ecx, esi
mov al, 7
lea edi, qword ptr [rdx + rcx + 69]
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
adc sil, -77
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
