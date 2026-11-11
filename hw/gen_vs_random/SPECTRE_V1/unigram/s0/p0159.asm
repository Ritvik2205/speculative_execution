.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
add al, 40 # instrumentation
lea ax, qword ptr [rdx + rdx]
lea ebx, qword ptr [rcx + rbx + 49]
and rsi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edi
add al, -92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 39
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 11407425
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
add cl, -29 # instrumentation
lea rdi, qword ptr [rax + rax + 91]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], bl
add cl, 29 # instrumentation
setnb cl
xor dil, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
