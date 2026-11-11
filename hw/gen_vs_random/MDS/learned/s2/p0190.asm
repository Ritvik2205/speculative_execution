.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 4
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
cmovb edx, ebx
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], 93
cmovs dx, di
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
xor dl, al
and dl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 17
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rax
and bl, 53
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
