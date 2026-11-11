.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cx, 60
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
lea dx, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 55
not rax
sub sil, -99
movsx edx, dl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 65
btr edx, ebx
cmp dl, -93
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], al
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 63
movsx rbx, ax
not cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
