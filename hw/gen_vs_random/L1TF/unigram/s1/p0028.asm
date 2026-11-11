.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
setb dl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 25
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 27
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 76
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], esi
adc al, 36
cmp cl, -71
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 76
lea cx, qword ptr [rcx + rbx + 83]
cmp cl, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
