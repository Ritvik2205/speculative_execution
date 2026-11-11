.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
xor bl, -116
movzx rbx, sil
add cl, 19
lea rax, qword ptr [rcx + rbx + 73]
and rcx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rcx
setp bl
add al, -3 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
cmovno si, si
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], ax
add eax, ebx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 40
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
