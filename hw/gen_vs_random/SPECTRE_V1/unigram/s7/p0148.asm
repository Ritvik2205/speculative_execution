.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
test rcx, -1420345926
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
movsx edx, dx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], ax
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
and dl, -109
or rbx, rbx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test bl, bl
mov al, al
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rax
add al, -62 # instrumentation
setnb dil
btr rdx, rsi
add bl, 28 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdx]
btr edx, 166
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
