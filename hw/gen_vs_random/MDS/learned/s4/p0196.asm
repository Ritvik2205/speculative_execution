.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and al, 84
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
and dl, -73
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
test rdi, 46
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
or sil, -49
xor rcx, -2
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
