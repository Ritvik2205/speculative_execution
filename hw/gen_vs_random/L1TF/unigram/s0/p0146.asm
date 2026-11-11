.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 54
xor ebx, 59
not ecx
inc dl
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 11
jmp .bb_0.1
.bb_0.1:
add al, 50 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
setbe al
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 72
and rsi, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], eax
bt ebx, 27
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
