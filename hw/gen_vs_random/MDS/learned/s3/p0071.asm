.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
jmp .bb_0.1
.bb_0.1:
or bl, -54
and eax, 561041355
bt rdi, 36
or al, 74
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
jmp .bb_0.2
.bb_0.2:
xor cl, bl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
xor bl, sil
btr cx, 136
or al, 37
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and al, sil
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
xor rsi, -117
test sil, dl
and dil, 125
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
xor dl, cl
jmp .bb_0.3
.bb_0.3:
and rcx, -63
and bl, dil
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
