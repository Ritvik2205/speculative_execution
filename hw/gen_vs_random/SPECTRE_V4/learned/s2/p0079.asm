.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
sbb dil, 1
or sil, -47
mov al, cl
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
add cl, -9
add al, -82
sub dl, bl
sbb dl, -71
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
and ax, 62
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
add al, -82
add dl, -8
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 86
sub cl, bl
and dil, -23
adc al, 41
and dx, si
cmp dil, -92
add dil, -61
add dil, 75
add al, 40
or dil, dil
or rcx, rbx
not cx
test dl, 114
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
or cl, al
mov dil, 7
and rbx, 9
and sil, cl
xor ax, 15671
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
