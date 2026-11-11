.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, cl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
cmp di, ax
xor rdx, 122
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -41
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rsi
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 64
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
add al, -113 # instrumentation
mov rbx, 67
lea cx, qword ptr [rbx + rbx + 18]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 46
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
