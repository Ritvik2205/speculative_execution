.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 44
lea esi, qword ptr [rbx + rax + 82]
lea bx, qword ptr [rcx + rcx]
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
test dx, 85
not bl
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], si
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
lea edi, qword ptr [rax + rcx + 53]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], cx
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 16
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
btc esi, 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
