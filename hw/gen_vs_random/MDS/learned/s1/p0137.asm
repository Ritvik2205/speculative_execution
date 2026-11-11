.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor cl, 55
xor dl, al
test edi, -1252846009
test edi, -1252846009
and di, 91
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and cx, -8
jmp .bb_0.1
.bb_0.1:
test eax, 298249463
xor bl, dl
test cl, bl
and ax, -122
and sil, sil
or dl, -21
bts dx, 50
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
or al, bl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
test rdi, 26
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
test ax, -20900
xor dl, dil
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
not rdi
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
or sil, al
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and al, cl
test eax, -1634766116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
