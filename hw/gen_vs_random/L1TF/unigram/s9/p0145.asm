.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
xor bl, sil
and al, -68
and rdi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
lea eax, qword ptr [rax + rdi + 78]
sbb ax, -9869
bts bx, 223
add bl, 3 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
imul cx, bx, 93
cmovbe rbx, rax
mov dl, dl
add bl, -79 # instrumentation
cmovo bx, ax
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
imul bx, dx
or dil, -113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
